Utilize a public API to find out what events are happening in your city.

## Learning Goals

* Interact with an API to retrieve information
* Research different tools to interact with an API
* Parse and navigate JSON data
* Build a simple Command Line Application

## Tools

* a Ruby HTTP library (use one of the following)
  - [net/http](http://ruby-doc.org/stdlib/libdoc/net/http/rdoc/Net/HTTP.html)
  - [openuri](http://ruby-doc.org/stdlib/libdoc/open-uri/rdoc/OpenURI.html)
  - [httpclient](https://github.com/nahi/httpclient)
  - [httparty](https://github.com/jnunemaker/httparty#httparty)
* [json](http://ruby-doc.org/stdlib/libdoc/json/rdoc/JSON.html)

## Instructions

In this exercise, we will utilize the RESTful SeatGeek API to retrieve and parse data about events happening in Boston, today.

Check out the [Events](http://platform.seatgeek.com/#events) section of the SeatGeek API documentation.

### Navigating the API

`https://api.seatgeek.com/2/events` is the index of events. We can filter results by adding query parameters to the URL.

`https://api.seatgeek.com/2/events?venue.state=MA` will filter results to only events occurring in Massachusetts.

Read the [API Documentation](http://platform.seatgeek.com/) to find out what other filters we can add to the query parameters in order to achieve the results we desire.

Print the results to the console.

```no-highlight
Northlane with Volumes and Coldrain @ Brighton Music Hall
Elf The Musical - Boston @ Wang Theatre
Rudolph the Red-Nosed Reindeer - Boston @ Shubert Theatre
Jill Scott @ Orpheum Theatre
A Confederacy of Dunces - Boston @ Boston University
Shear Madness - Boston @ Charles Playhouse Second Stage
The Gene Pool @ Berklee College of Music
```

## Bonus Challenge

Using the `ARGV` array, allow the user to pass arguments to the `local_events.rb` app, so that they can scope results to a specific city and a specific date.
