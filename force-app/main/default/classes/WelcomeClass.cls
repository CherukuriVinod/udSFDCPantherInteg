@RestResource(urlMapping='/v1/Welcome/*')
global with sharing class WelcomeClass{

    global Final static String WELCOME_MESSAGE = 'Learning Integration In Udemy';
    
    @httpGet
    global static String greetingMessage(){
        return WELCOME_MESSAGE;
    }
    
    @httpPost
    global static String postGreetingMessage(){
        return WELCOME_MESSAGE;
    }
    
    @httpPatch
    global static String patchGreetingMessage(){
        return WELCOME_MESSAGE+' UPDATE WITH PATHC'; 
    }
}