package org.actonarboreta.tools.app;

import org.actonarboreta.tools.command.QRCoderCommand;
import picocli.CommandLine;

public class QRCoderApp {

    /*
     * Execute:
     * mvn exec:java -Dexec.mainClass=org.actonarboreta.tools.app.QRCoderApp -q -Dexec.args="--url https://actonarboretum.org/ --output /Users/jack/code/temp/qr-1/a.png"
     */
    public static void main(String[] args) {
        CommandLine.run(new QRCoderCommand(), args);
    }
}