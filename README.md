Hitchhike.me
----------

Hitchhiking is my favorite way of transportation. Whenever I had time to
travel i chose hitchhiking before car pooling and trains. It is a great way
to get in touch with the local population and get a glimpse of the life of 
a completely other personality.
When I managed to go a long tour of about 1000 kms in one day i’ve felt 
energised and quite happy about my day spent on the road, meeting all 
these people coming from different backgrounds.

After a while it was quite difficult to remember all these different people
and the stories that were connected to it.

By making it easy to log these experiences,
this application aims at creating a hitchhiking log.
Furthermore the logs can be used to create demographic statistics about hitchhiking:
e.g. how much male/female driver did you hitchhike with, or how much kilometers did 
you hitchhike, etc...

Documenting A Hitchhike
-----------------------

The current flow of documenting a hitchhike:

* Log in
* Click on new Hitchhike
* Fill in fields: title:string from:string, to:string, photo:image
* Crop the image
* Submit

Roadmap
-------

Version 0.1:

* User can sign in/out
* User can upload a hitchhike and geographic information gets parsed in 
  all different cases
* If a picture is attached, the image gets cropped so that it fits into
  a slideshow and the user can choose where it is cropped.
* A Google Map canvas displays the route and the distance travelled

Version 0.2:

* A User can add more information to a hitchhike:
  - several people with whom you rode and information about them: 
    origin, occupation, mission, driver?, male/female
  - a story which is displayed below the hitchhike.

* Statistics:
  By telling the app from where to where you went, it creates statistical data, e.g.:
  total amount kilometers travelled, country where you hitchhiked most, etc...

Environment
-----------

* Ruby 1.9.2
* Rails 3.0.0
* Rspec 2.0.1
* Cucumber 0.9.2
* Mysql
* ... (see Gemfile)
