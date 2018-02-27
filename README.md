# Docker Flask and Azure

This is a test on how to use docker to deploy to an azure linux machine.

## Steps
1. install requirements
    * `pip install -r requirements.txt `
2. bulid a docker image and run locally
    * `docker build -f Dockerfile -t image_name:version`
    * `docker run -p 5000:5000 --rm image_name`
3. publish docker image to DockerHUb, you'll need a docker hub acc
    * run `docker images` to see list of images, then grab the tag i.e hash value
    * run `docker tag hash_value docker_hub_username/app_name`
    * run `docker login` #follow prompt
    * after login run `docker push user_name/app_name`

4. Deploying to Azure
    * create an azure trial acc or use one that exists.
    * create a new Web App on Linux instance.
    * add app name, subscription & resource group
    * configure container
        * select Docker as the image source
        * user your username/appname as the image i.e DockerHub username
        * click ok.
    * go to Application setting of your Web App on linux app
    * on App settings add port as the first input field and number as the second i.e PORT:5000
    * click save
    * run http://yourappname.azurewebsites.net/ to see the site.
 Awesome, now you know how to deploy a docker image to azure, :)
    
