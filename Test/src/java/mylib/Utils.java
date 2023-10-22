/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mylib;

import java.util.Random;

/**
 *
 * @author ACER
 */
public class Utils {
    public static String getRandomUserId(String roleId){
        String userId;
        Random rand = new Random();
        int int_random = rand.nextInt(1000000000);
        String followInt = String.format("%06d", int_random);
        userId = roleId + followInt;
        return userId;
    }
}
