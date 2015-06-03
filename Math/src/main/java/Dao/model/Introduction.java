package Dao.model;

import java.util.Date;

public class Introduction {
    private Short introid;

    private String introtitle;

    private Date introtime;

    private String introcontent;

    public Short getIntroid() {
        return introid;
    }

    public void setIntroid(Short introid) {
        this.introid = introid;
    }

    public String getIntrotitle() {
        return introtitle;
    }

    public void setIntrotitle(String introtitle) {
        this.introtitle = introtitle == null ? null : introtitle.trim();
    }

    public Date getIntrotime() {
        return introtime;
    }

    public void setIntrotime(Date introtime) {
        this.introtime = introtime;
    }

    public String getIntrocontent() {
        return introcontent;
    }

    public void setIntrocontent(String introcontent) {
        this.introcontent = introcontent == null ? null : introcontent.trim();
    }
}