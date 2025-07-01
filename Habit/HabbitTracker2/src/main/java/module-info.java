module com.example.habbittracker2 {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;
    requires java.desktop;


    opens com.example.habbittracker2 to javafx.fxml;
    exports com.example.habbittracker2;
}