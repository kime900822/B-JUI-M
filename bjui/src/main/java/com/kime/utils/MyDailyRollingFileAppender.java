/*
 * 重写DailyRollingFileAppender方法，用户自动生成LOG目录
 */
package com.kime.utils;

import java.io.File;

import org.apache.log4j.DailyRollingFileAppender;

public class MyDailyRollingFileAppender extends DailyRollingFileAppender{
    @Override
    public void setFile(String file) {
        String filePath = file;
        File fileCheck = new File(filePath);
        if (!fileCheck.exists())
            fileCheck.getParentFile().mkdirs();
        super.setFile(filePath);
    }
}
