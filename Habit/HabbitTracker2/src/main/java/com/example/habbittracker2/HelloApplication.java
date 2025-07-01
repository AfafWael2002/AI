package com.example.habbittracker2;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;
import java.io.IOException;
public class HelloApplication extends Application {

    @Override
    public void start(Stage stage) throws IOException {
        FXMLLoader loginLoader = new FXMLLoader(HelloApplication.class.getResource("LoginScene.fxml"));
        Scene loginScene = new Scene(loginLoader.load(), 600, 400);
        stage.setTitle("Habit Tracker");
        stage.setScene(loginScene);
        stage.show();
    }


    public static void main(String[] args) {
        launch();
    }
}