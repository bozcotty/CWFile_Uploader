# CWFile_Uploader
* A simple, straightforward app that allows you to upload image files using Rails 4.1.2 and Carrierwave

## Description
This is a quick Rails application that focuses on making cloud-based image file uploads as easy and straightforward as possible.

# Important Notes
-You will need an Amazon AWS account, hence Amazon private and secret keys. Once you have an AWS account, you will need to create an S3 bucket for this application.
-You should take strict caution not to let your Amazon secret key become public. (Use the Figaro gem, described below)

#Gems needed:
-carrierwave => 'gem carrierwave'
-mini_magick => 'gem mini_magick'
-fog => 'gem fog'

-Note: with mini_magick, you will need the command line application called ImageMagick. So install ImageMagick first:
=> $ brew install ImageMagick





## Contributors
* Scott Hale
