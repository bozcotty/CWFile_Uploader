# CWFile_Uploader
* A simple, straightforward app that allows you to upload image files using Rails 4.1.2 and Carrierwave

## Description
This is a quick Rails application that focuses on making cloud-based image file uploads as easy and straightforward as possible.

# Important Notes
- You will need an Amazon AWS account, hence Amazon private and secret keys. Once you have an AWS account, you will need to create an S3 bucket for this application.
- You should take strict caution not to let your Amazon secret key become public. (Use the Figaro gem, described below)

#Gems needed:
- carrierwave => 'gem carrierwave'
- fog => 'gem fog'
- figaro => 'gem figaro'
- mini_magick => 'gem mini_magick'
- *Note: with mini_magick, you will need the command line application called ImageMagick. So install ImageMagick first:

<tt> $ brew install ImageMagick </tt>

- remember to run <tt> $ bundle install</tt>

-------------------------------
*Note of Caution with AWS keys:
- Install the figaro gem from command line after you have added it to your gemfile<tt>$ install figaro</tt>
- It will create an application.yml file in your config folder.
- It will automatically add this new application.yml file to the .gitignore file. This is crucial! So make sure application.yml is listed in your .gitignore before you push to github!!
- Because your application.yml file will store your AWS keys which you don't want public. If they become public, sneaky freaks may try to use them to run servers at your expense on your AWS account == not good.
- See the application.example.yml file I created in the config folder to see what your application.yml file should look like.

-------------------------------

#Key files to notice and things to do:
- fog.rb in config/initializers
- image_loader.rb under app/uploaders (much of the wiring is here for how image uploads are handled and how they will behave)
- Make sure you create new a new bucket in your AWS account that will hold the image files in the cloud. Whatever you call it, add that name on the appropriate line in your application.yml file.
- Notice the view files for thingies, especially _form, show, and index. They each reference the image files you are uploading.
- Once you've uploaded some thingies of your own in the app, click inspect element on your images showing in your browser... they should have a long link that has s3.amazonaws.com in it somewhere. This means you are successfully storing your resource image files in the cloud!

## Contributors
* Scott Hale
