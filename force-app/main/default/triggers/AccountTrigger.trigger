trigger AccountTrigger on Account (after insert, after update) {
    
    /*if(Trigger.isAfter && Trigger.isInsert){
        Account acc = Trigger.new.get(0);
        if(acc.Location__latitude__s != null && acc.Location__longitude__s != null){
            OpenCageGeocoderUtil.reverseGeoCoding(acc.Id);
        }else{
            OpenCageGeocoderUtil.forwordGeoCoding(acc.Id);
        }
        
    }else if (Trigger.isAfter && Trigger.isUpdate) {
        // Trigger.OldMap
    }*/
}

/*
Steps In Implementing OpenCage Geocoder
Here We are implementing Forward Geocoding.

>> Step-1 Add Remote Site Settings
>> Step-2 Create Custom Labels to Store the API Key and API Endpoint
>> Step-3 Develop the Apex Code in Salesforce

>> https://api.opencagedata.com/geocode/v1/json?q=Rua+Cafel%C3%A2ndia%2C+Carapicu%C3%ADba%2C+Brasil&key=7044f0e5725f4eb4bf89a02b20dca97f&pretty=1
    In the Opencage website the above link is in Forward Geocoding section which is in Json format.
    Next in the Codebeautify.org/jsonviewer
    We will paste the above Json and beautify to proper Json format.

>> adminbooster.com/tool/json2apex
    By accessing the above link we have to paste the proper Json format to convert it into ApexClass
    and then copy the same apex class into developer console.


>> Step-4 Parse JSON response to Apex Class
>> Step-5 Debug the Response.

    Apex Classes involved OpenCageGeocoderUtil, OpenCageGeoCoder and AccountTrigger(Incase If you want to make callout from Apextrigger)
*/