<%@ include file="includes/header.html" %>
<img src="images/murachlogo.png" alt="Murach Logo" width="150">
<h1>Survey</h1>
<p>
    If you have a moment, we'd appreciate it if you would
    fill out this survey.
</p>
<form action="survey" method="post">

    <h2>Your information:</h2>

    <div class="form-row">
        <label for="firstName">First Name</label>
        <input type="text" id="firstName" name="firstName" required>
    </div>

    <div class="form-row">
        <label for="lastName">Last Name</label>
        <input type="text" id="lastName" name="lastName" required>
    </div>

    <div class="form-row">
        <label for="email">Email</label>
        <input type="email" id="email" name="email" required>
    </div>

    <div class="form-row">
        <label for="dateOfBirth">Date of Birth</label>
        <input type="date" id="dateOfBirth" name="dateOfBirth" required>
    </div>

    <h2>How did you hear about us?</h2>

    <div class="choice-group">

        <label class="choice">
            <input type="radio" name="heardFrom"
                   value="searchEngine" checked>
            Search engine
        </label>

        <label class="choice">
            <input type="radio" name="heardFrom"
                   value="wordOfMouth">
            Word of mouth
        </label>

        <label class="choice">
            <input type="radio" name="heardFrom"
                   value="socialMedia">
            Social Media
        </label>

        <label class="choice">
            <input type="radio" name="heardFrom"
                   value="other">
            Other
        </label>

    </div>

    <h2>
        Would you like to receive announcements
        about new CDs and special offers?
    </h2>

    <div class="checkbox-group">

        <div>
            <label class="choice">
                <input type="checkbox" name="announcements"
                       value="yes">
                YES, I'd like that.
            </label>
        </div>

        <div>
            <label class="choice">
                <input type="checkbox" name="productUpdates"
                       value="yes">
                YES, please send me updates.
            </label>
        </div>

    </div>

    <div class="contact-row">

        <label for="contactBy">Please contact me by:</label>

        <select name="contactBy" id="contactBy">
            <option value="both">Email or postal mail</option>
            <option value="email">Email only</option>
            <option value="postal">Postal mail only</option>
        </select>

    </div>

    <div class="submit-row">
        <input type="submit" value="Submit" id="submit">
    </div>

</form>

<%@ include file="includes/footer.jsp" %>
