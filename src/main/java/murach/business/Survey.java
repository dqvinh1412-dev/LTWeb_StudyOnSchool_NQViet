package murach.business;
import java.io.Serializable;

public class Survey implements Serializable {
    private User user;
    private String heardFrom;
    private boolean announcements;
    private boolean productUpdates;
    private String contactBy;

    public Survey() {
    }

    public Survey(User user, String heardFrom, boolean announcements,
                  boolean productUpdates, String contactBy) {
        this.user = user;
        this.heardFrom = heardFrom;
        this.announcements = announcements;
        this.productUpdates = productUpdates;
        this.contactBy = contactBy;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getHeardFrom() {
        return heardFrom;
    }

    public void setHeardFrom(String heardFrom) {
        this.heardFrom = heardFrom;
    }

    public boolean isAnnouncements() {
        return announcements;
    }

    public void setAnnouncements(boolean announcements) {
        this.announcements = announcements;
    }

    public boolean isProductUpdates() {
        return productUpdates;
    }

    public void setProductUpdates(boolean productUpdates) {
        this.productUpdates = productUpdates;
    }

    public String getContactBy() {
        return contactBy;
    }

    public void setContactBy(String contactBy) {
        this.contactBy = contactBy;
    }
}