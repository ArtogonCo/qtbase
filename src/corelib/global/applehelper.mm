#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#include "qglobal.h"

void iosPrintStdErr(const char* str) {
    static bool logFlag = qEnvironmentVariableIsSet("QT_NO_LOG");
    if (!logFlag) {
        NSLog(@"%s",str);
    }
}
extern "C" bool isBackground() {
    return [[UIApplication sharedApplication] applicationState] == UIApplicationStateBackground;
}

