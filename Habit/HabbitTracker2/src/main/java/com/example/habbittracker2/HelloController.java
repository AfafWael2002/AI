package com.example.habbittracker2;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.stage.Stage;
import java.io.IOException;
import java.sql.*;

import javafx.scene.control.CheckBox;

import javax.swing.*;


public class HelloController  {

    private Stage stage;
    private Scene scene;
    private Parent root;

    @FXML
    public CheckBox ch0;
    public CheckBox ch1;
    public CheckBox ch2;
    public CheckBox ch3;
    public CheckBox ch4;
    public CheckBox ch5;
    public CheckBox ch6;
    public CheckBox ch7;
    public CheckBox ch8;
    public CheckBox ch9;
    public CheckBox ch10;
    public CheckBox ch11;
    public CheckBox ch12;
    public CheckBox ch13;
    public CheckBox ch14;
    public CheckBox ch15;
    public CheckBox ch16;
    public CheckBox ch17;
    public CheckBox ch18;
    public CheckBox ch19;
    public CheckBox ch20;

    public CheckBox ch21;
    public CheckBox ch22;
    public CheckBox ch23;
    public CheckBox ch24;
    public CheckBox ch25;
    public CheckBox ch26;
    public CheckBox ch27;
    public CheckBox ch28;
    public CheckBox ch29;
    public CheckBox ch30;
    public CheckBox ch31;
    public CheckBox ch32;
    public CheckBox ch33;
    public CheckBox ch34;
    public CheckBox ch35;
    public CheckBox ch36;
    public CheckBox ch37;
    public CheckBox ch38;
    public CheckBox ch39;
    public CheckBox ch40;
    public CheckBox ch41;
    public CheckBox ch42;
    public CheckBox ch43;
    public CheckBox ch44;
    public CheckBox ch45;
    public CheckBox ch46;
    public CheckBox ch47;
    public CheckBox ch48;
    public CheckBox ch49;
    public CheckBox ch50;
    public CheckBox ch51;
    public CheckBox ch52;
    public CheckBox ch53;
    public CheckBox ch54;
    public CheckBox ch55;
    public CheckBox ch56;
    public CheckBox ch57;
    public CheckBox ch58;
    public CheckBox ch59;
    public CheckBox ch60;
    public CheckBox ch61;
    public CheckBox ch62;

    // private Button H1;
    @FXML
    private Button H1;
    @FXML
    private ProgressBar bar1;



    double pro=0;

    public void ToMain(ActionEvent event) throws IOException
    {
        root =  FXMLLoader.load(getClass().getResource("MainScene.fxml"));
        stage=(Stage)(((Node)event.getSource()).getScene().getWindow());
        scene = new Scene(root);
        stage.setScene(scene);
        stage.show();

    }

    public void ToHabit1(ActionEvent event) throws IOException
    {
        root =  FXMLLoader.load(getClass().getResource("Scene2Habit1.fxml"));
       // H1.setOnAction();
        stage=(Stage)(((Node)event.getSource()).getScene().getWindow());
        scene = new Scene(root);
        stage.setScene(scene);
        stage.show();
     //  bar1.setProgress(pro);
    }


    public void ToHabit2(ActionEvent event) throws IOException
    {
        root =  FXMLLoader.load(getClass().getResource("Scene2Habit2.fxml"));
        stage=(Stage)(((Node)event.getSource()).getScene().getWindow());
        scene = new Scene(root);
        stage.setScene(scene);
        stage.show();

    }

    public void ToHabit3(ActionEvent event) throws IOException
    {
       root =  FXMLLoader.load(getClass().getResource("Scene2Habit3.fxml"));
        stage=(Stage)(((Node)event.getSource()).getScene().getWindow());
        scene = new Scene(root);
        stage.setScene(scene);
        stage.show();

    }

    public void increase0(ActionEvent event) throws IOException {


    ch0.setOnAction(e ->
        {

            ch0.setSelected(true);

        });

        if (ch0.isSelected())
            pro += (0.048);
        bar1.setProgress(pro);


    }
    public void increase1(ActionEvent event) throws IOException {

        ch1.setOnAction(

                    e -> ch1.setSelected(true)
        );
        if (ch1.isSelected())
            pro += (0.048);
        bar1.setProgress(pro);

    }

    public void increase2(ActionEvent event) throws IOException {

        ch2.setOnAction(e -> ch2.setSelected(true));
        if (ch2.isSelected())
            pro += (.048);
        bar1.setProgress(pro);

    }
    public void increase3(ActionEvent event) throws IOException {

        ch3.setOnAction(e -> ch3.setSelected(true));
        if (ch3.isSelected())
            pro += (.048);
        bar1.setProgress(pro);

    }
    public void increase4(ActionEvent event) throws IOException {

        ch4.setOnAction(e -> ch4.setSelected(true));
        if (ch4.isSelected())
            pro += (.048);
        bar1.setProgress(pro);

    }
    public void increase5(ActionEvent event) throws IOException {

        ch5.setOnAction(e -> ch5.setSelected(true));
        if (ch5.isSelected())
            pro += (.048);
        bar1.setProgress(pro);

    }
    public void increase6(ActionEvent event) throws IOException {

        ch6.setOnAction(e -> ch6.setSelected(true));
        if (ch6.isSelected())
            pro += (.048);
        bar1.setProgress(pro);

    }
    public void increase7(ActionEvent event) throws IOException {

        ch7.setOnAction(e -> ch7.setSelected(true));
        if (ch7.isSelected())
            pro += (.048);
        bar1.setProgress(pro);

    }
    public void increase8(ActionEvent event) throws IOException {

        ch8.setOnAction(e -> ch8.setSelected(true));
        if (ch8.isSelected())
            pro += (.048);
        bar1.setProgress(pro);

    }
    public void increase9(ActionEvent event) throws IOException {

        ch9.setOnAction(e -> ch9.setSelected(true));
        if (ch9.isSelected())
            pro += (.048);
        bar1.setProgress(pro);

    }

    public void increase10(ActionEvent event) throws IOException {
        ch10.setOnAction(e ->
        {
            ch10.setSelected(true);

        });

        if (ch10.isSelected())
            pro += (0.048);
        bar1.setProgress(pro);

    }
    public void increase11(ActionEvent event) throws IOException {
        ch11.setOnAction(e ->
        {
            ch11.setSelected(true);

        });

        if (ch11.isSelected())
            pro += (0.048);
        bar1.setProgress(pro);


    }

    public void increase12(ActionEvent event) throws IOException {
        ch12.setOnAction(e ->
        {
            ch12.setSelected(true);

        });

        if (ch12.isSelected())
            pro += (0.048);
        bar1.setProgress(pro);


    }
    public void increase13(ActionEvent event) throws IOException {
        ch13.setOnAction(e ->
        {
            ch13.setSelected(true);

        });

        if (ch13.isSelected())
            pro += (0.048);
        bar1.setProgress(pro);


    }
    public void increase14(ActionEvent event) throws IOException {
        ch14.setOnAction(e ->
        {
            ch14.setSelected(true);

        });

        if (ch14.isSelected())
            pro += (0.048);
        bar1.setProgress(pro);
    }
    public void increase15(ActionEvent event) throws IOException {
        ch15.setOnAction(e ->
        {
            ch15.setSelected(true);

        });

        if (ch15.isSelected())
            pro += (0.048);
        bar1.setProgress(pro);


    }
    public void increase16(ActionEvent event) throws IOException {
        ch16.setOnAction(e ->
        {
            ch16.setSelected(true);

        });

        if (ch16.isSelected())
            pro += (0.048);
        bar1.setProgress(pro);


    }
    public void increase17(ActionEvent event) throws IOException {
        ch17.setOnAction(e ->
        {
            ch17.setSelected(true);

        });

        if (ch17.isSelected())
            pro += (0.048);
        bar1.setProgress(pro);


    }
    public void increase18(ActionEvent event) throws IOException {
        ch18.setOnAction(e ->
        {
            ch18.setSelected(true);

        });

        if (ch18.isSelected())
            pro += (0.048);
        bar1.setProgress(pro);


    }

    public void increase19(ActionEvent event) throws IOException {
        ch19.setOnAction(e ->
        {
            ch19.setSelected(true);

        });

        if (ch19.isSelected())
            pro += (0.048);
        bar1.setProgress(pro);


    }
    public void increase20(ActionEvent event) throws IOException {
        ch20.setOnAction(e ->
        {
            ch20.setSelected(true);

        });

        if (ch20.isSelected())
            pro += (0.048);
        bar1.setProgress(pro);


    }
    double pro2=0;
    @FXML ProgressBar bar2;

    public void increase21(ActionEvent event) throws IOException {


        ch21.setOnAction(e ->
        {

            ch21.setSelected(true);

        });

        if (ch21.isSelected())
            pro2 += (0.048);
        bar2.setProgress(pro2);


    }

    public void increase22(ActionEvent event) throws IOException {


        ch22.setOnAction(e ->
        {

            ch22.setSelected(true);

        });

        if (ch22.isSelected())
            pro2 += (0.048);
        bar2.setProgress(pro2);


    }
    public void increase23(ActionEvent event) throws IOException {


        ch23.setOnAction(e ->
        {

            ch23.setSelected(true);

        });

        if (ch23.isSelected())
            pro2 += (0.048);
        bar2.setProgress(pro2);


    }
    public void increase24(ActionEvent event) throws IOException {


        ch24.setOnAction(e ->
        {

            ch24.setSelected(true);

        });

        if (ch24.isSelected())
            pro2 += (0.048);
        bar2.setProgress(pro2);


    }
    public void increase25(ActionEvent event) throws IOException {


        ch25.setOnAction(e ->
        {

            ch25.setSelected(true);

        });

        if (ch25.isSelected())
            pro2 += (0.048);
        bar2.setProgress(pro2);


    }
    public void increase26(ActionEvent event) throws IOException {


        ch26.setOnAction(e ->
        {

            ch26.setSelected(true);

        });

        if (ch26.isSelected())
            pro2 += (0.048);
        bar2.setProgress(pro2);


    }
    public void increase27(ActionEvent event) throws IOException {


        ch27.setOnAction(e ->
        {

            ch27.setSelected(true);

        });

        if (ch27.isSelected())
            pro2 += (0.048);
        bar2.setProgress(pro2);


    }
    public void increase28(ActionEvent event) throws IOException {


        ch28.setOnAction(e ->
        {

            ch28.setSelected(true);

        });

        if (ch28.isSelected())
            pro2 += (0.048);
        bar2.setProgress(pro2);


    }
    public void increase29(ActionEvent event) throws IOException {


        ch29.setOnAction(e ->
        {

            ch29.setSelected(true);

        });

        if (ch29.isSelected())
            pro2 += (0.048);
        bar2.setProgress(pro2);


    }
    public void increase30(ActionEvent event) throws IOException {


        ch30.setOnAction(e ->
        {

            ch30.setSelected(true);

        });

        if (ch30.isSelected())
            pro2 += (0.048);
        bar2.setProgress(pro2);


    }
    public void increase31(ActionEvent event) throws IOException {


        ch31.setOnAction(e ->
        {

            ch31.setSelected(true);

        });

        if (ch31.isSelected())
            pro2 += (0.048);
        bar2.setProgress(pro2);


    }
    public void increase32(ActionEvent event) throws IOException {


        ch32.setOnAction(e ->
        {

            ch32.setSelected(true);

        });

        if (ch32.isSelected())
            pro2 += (0.048);
        bar2.setProgress(pro2);


    }
    public void increase33(ActionEvent event) throws IOException {


        ch33.setOnAction(e ->
        {

            ch33.setSelected(true);

        });

        if (ch33.isSelected())
            pro2 += (0.048);
        bar2.setProgress(pro2);


    }
    public void increase34(ActionEvent event) throws IOException {


        ch34.setOnAction(e ->
        {

            ch34.setSelected(true);

        });

        if (ch34.isSelected())
            pro2+= (0.048);
        bar2.setProgress(pro2);


    }
    public void increase35(ActionEvent event) throws IOException {


        ch35.setOnAction(e ->
        {

            ch35.setSelected(true);

        });

        if (ch35.isSelected())
            pro2 += (0.048);
        bar2.setProgress(pro2);


    }
    public void increase36(ActionEvent event) throws IOException {


        ch36.setOnAction(e ->
        {

            ch36.setSelected(true);

        });

        if (ch36.isSelected())
            pro2 += (0.048);
        bar2.setProgress(pro2);


    }
    public void increase37(ActionEvent event) throws IOException {


        ch37.setOnAction(e ->
        {

            ch37.setSelected(true);

        });

        if (ch37.isSelected())
            pro2 += (0.048);
        bar2.setProgress(pro2);


    }
    public void increase38(ActionEvent event) throws IOException {


        ch38.setOnAction(e ->
        {

            ch38.setSelected(true);

        });

        if (ch38.isSelected())
            pro2 += (0.048);
        bar2.setProgress(pro2);


    }
    public void increase39(ActionEvent event) throws IOException {


        ch39.setOnAction(e ->
        {

            ch39.setSelected(true);

        });

        if (ch39.isSelected())
            pro2 += (0.048);
        bar2.setProgress(pro2);


    }
    public void increase40(ActionEvent event) throws IOException {


        ch40.setOnAction(e ->
        {

            ch40.setSelected(true);

        });

        if (ch40.isSelected())
            pro2 += (0.048);
        bar2.setProgress(pro2);


    }
    public void increase41(ActionEvent event) throws IOException {


        ch41.setOnAction(e ->
        {

            ch41.setSelected(true);

        });

        if (ch41.isSelected())
            pro2 += (0.048);
        bar2.setProgress(pro2);


    }

    double pro3=0;
    @FXML ProgressBar bar3;
    public void increase42(ActionEvent event) throws IOException {


        ch42.setOnAction(e ->
        {

            ch42.setSelected(true);

        });

        if (ch42.isSelected())
            pro3 += (0.048);
        bar3.setProgress(pro3);


    }
    public void increase43(ActionEvent event) throws IOException {


        ch43.setOnAction(e ->
        {

            ch43.setSelected(true);

        });

        if (ch43.isSelected())
            pro3 += (0.048);
        bar3.setProgress(pro3);


    }
    public void increase44(ActionEvent event) throws IOException {


        ch44.setOnAction(e ->
        {

            ch44.setSelected(true);

        });

        if (ch44.isSelected())
            pro3 += (0.048);
        bar3.setProgress(pro3);


    }
    public void increase45(ActionEvent event) throws IOException {


        ch45.setOnAction(e ->
        {

            ch45.setSelected(true);

        });

        if (ch45.isSelected())
            pro3 += (0.048);
        bar3.setProgress(pro3);


    }
    public void increase46(ActionEvent event) throws IOException {


        ch46.setOnAction(e ->
        {

            ch46.setSelected(true);

        });

        if (ch46.isSelected())
            pro3 += (0.048);
        bar3.setProgress(pro3);


    }
    public void increase47(ActionEvent event) throws IOException {


        ch47.setOnAction(e ->
        {

            ch47.setSelected(true);

        });

        if (ch47.isSelected())
            pro3 += (0.048);
        bar3.setProgress(pro3);


    }
    public void increase48(ActionEvent event) throws IOException {


        ch48.setOnAction(e ->
        {

            ch48.setSelected(true);

        });

        if (ch48.isSelected())
            pro3 += (0.048);
        bar3.setProgress(pro3);


    }
    public void increase49(ActionEvent event) throws IOException {


        ch49.setOnAction(e ->
        {

            ch49.setSelected(true);

        });

        if (ch49.isSelected())
            pro3 += (0.048);
        bar3.setProgress(pro3);


    }
    public void increase50(ActionEvent event) throws IOException {


        ch50.setOnAction(e ->
        {

            ch50.setSelected(true);

        });

        if (ch50.isSelected())
            pro3 += (0.048);
        bar3.setProgress(pro3);


    }

    public void increase51(ActionEvent event) throws IOException {


        ch51.setOnAction(e ->
        {

            ch51.setSelected(true);

        });

        if (ch51.isSelected())
            pro3 += (0.048);
        bar3.setProgress(pro3);


    }
    public void increase52(ActionEvent event) throws IOException {


        ch52.setOnAction(e ->
        {

            ch52.setSelected(true);

        });

        if (ch52.isSelected())
            pro3 += (0.048);
        bar3.setProgress(pro3);


    }
    public void increase53(ActionEvent event) throws IOException {


        ch53.setOnAction(e ->
        {

            ch53.setSelected(true);

        });

        if (ch53.isSelected())
            pro3 += (0.048);
        bar3.setProgress(pro3);


    }
    public void increase54(ActionEvent event) throws IOException {


        ch54.setOnAction(e ->
        {

            ch54.setSelected(true);

        });

        if (ch54.isSelected())
            pro3 += (0.048);
        bar3.setProgress(pro3);


    }
    public void increase55(ActionEvent event) throws IOException {


        ch55.setOnAction(e ->
        {

            ch55.setSelected(true);

        });

        if (ch55.isSelected())
            pro3 += (0.048);
        bar3.setProgress(pro3);


    }
    public void increase56(ActionEvent event) throws IOException {


        ch56.setOnAction(e ->
        {

            ch56.setSelected(true);

        });

        if (ch56.isSelected())
            pro3 += (0.048);
        bar3.setProgress(pro3);


    }
    public void increase57(ActionEvent event) throws IOException {


        ch57.setOnAction(e ->
        {

            ch57.setSelected(true);

        });

        if (ch57.isSelected())
            pro3 += (0.048);
        bar3.setProgress(pro3);


    }
    public void increase58(ActionEvent event) throws IOException {


        ch58.setOnAction(e ->
        {

            ch58.setSelected(true);

        });

        if (ch58.isSelected())
            pro3 += (0.048);
        bar3.setProgress(pro3);


    }
    public void increase59(ActionEvent event) throws IOException {


        ch59.setOnAction(e ->
        {

            ch59.setSelected(true);

        });

        if (ch59.isSelected())
            pro3 += (0.048);
        bar3.setProgress(pro3);


    }
    public void increase60(ActionEvent event) throws IOException {


        ch60.setOnAction(e ->
        {

            ch60.setSelected(true);

        });

        if (ch60.isSelected())
            pro3 += (0.048);
        bar3.setProgress(pro3);


    }

    public void increase61(ActionEvent event) throws IOException {


        ch61.setOnAction(e ->
        {

            ch61.setSelected(true);

        });

        if (ch61.isSelected())
            pro3 += (0.048);
        bar3.setProgress(pro3);


    }
    public void increase62(ActionEvent event) throws IOException {


        ch62.setOnAction(e ->
        {

            ch62.setSelected(true);

        });

        if (ch62.isSelected())
            pro3 += (0.048);
        bar3.setProgress(pro3);


    }

    //To connect DataBase
    @FXML private TextField usernameField;

    @FXML private PasswordField passwordField;
    @FXML private Label L1;

    private Connection conn;

    public void initialize() {
        // Connect to MySQL database
        String url = "jdbc:mysql://localhost:3306/habittracker2";
        String user = "root";
        String password = "afaf";
        try {
            conn = DriverManager.getConnection(url, user, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void login(ActionEvent event) throws IOException  {
        String username = usernameField.getText();
        String password = passwordField.getText();

        // Check if username and password are valid
        String query = "SELECT * FROM Users WHERE User_name=? AND User_pass=?";
        try {
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, username);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                // Login successful
               // System.out.println("Login successful!");
                root =  FXMLLoader.load(getClass().getResource("MainScene.fxml"));
                stage=(Stage)(((Node)event.getSource()).getScene().getWindow());
                scene = new Scene(root);
                stage.setScene(scene);
                stage.show();
            } else {
                // Login failed
                L1.setText("Login failed!,Try Again");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}


