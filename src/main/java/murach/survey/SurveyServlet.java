package murach.survey;

import murach.business.Survey;
import murach.business.SurveyDTO;
import murach.business.User;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeParseException;

public class SurveyServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String firstName = getValue(request, "firstName");
        String lastName = getValue(request, "lastName");
        String email = getValue(request, "email");
        String dateValue = getValue(request, "dateOfBirth");

        if (firstName.isBlank() || lastName.isBlank() || email.isBlank()) {
            response.sendError(
                    HttpServletResponse.SC_BAD_REQUEST,
                    "Vui lòng nhập họ, tên và email."
            );
            return;
        }

        LocalDate dateOfBirth = null;
        if (!dateValue.isBlank()) {
            try {
                dateOfBirth = LocalDate.parse(dateValue);
            } catch (DateTimeParseException e) {
                response.sendError(
                        HttpServletResponse.SC_BAD_REQUEST,
                        "Ngày sinh không hợp lệ."
                );
                return;
            }
        }

        User user = new User(firstName, lastName, email, dateOfBirth);
        Survey survey = new Survey(
                user,
                getValue(request, "heardFrom"),
                "yes".equals(request.getParameter("announcements")),
                "yes".equals(request.getParameter("productUpdates")),
                getValue(request, "contactBy")
        );

        SurveyDTO result = new SurveyDTO(user, survey);
        request.setAttribute("result", result);

        request.getRequestDispatcher("/thanks.jsp")
                .forward(request, response);
    }

    private String getValue(HttpServletRequest request, String parameterName) {
        String value = request.getParameter(parameterName);
        return value == null ? "" : value.trim();
    }
}