# RD Challenge


## What is this?
This is the repository to Resultado Digital's challenge. This solutions is compound of three small project.
    
#### Analytics lib
The analytics lib is a JavaScript lib to track every page accessed by the user.
#### Analytics Admin
The analytics admin is a Rails app that will receiver the informations from analytics lib. This application is able to show how many users accessed the application and how many pages them have visualized.
#### Site Example
This is a simple store that uses the analytics lib as a demonstration.

## Getting Started
### Installation
Clone the repository:
```sh       
$ git clone https://github.com/alissonbrunosa/rd_challenge.git
$ cd rd_challenge
```


#### Analytics Admin
Go to the application directory and then:
```sh 
$ cd analytics_admin
$ bundle install
```
Execute the command to run the migrations:
```sh 
$ rails db:setup
```
Start the application:
```sh 
$ rails s
```


#### Awesome Store
Go to the application directory and then:
```sh 
$ cd site_example
$ bundle install
```
Execute the command to run the migrations:
```sh 
$ rails db:setup
```
Start the application:
```sh 
$ rails s -p 3001
```
Here you need to specify another port, because the port 3000 is already in use.
After do all this you can access the Analytic Admin through the link http://localhost:3000 and the Awesome Store you can access through the link http://localhost:3000.



#### Analytics lib
**Do not need to be installed, because it is already installed in Awesome Store.**
By default Analytics lib will send the informations to http://localhost:3000, if you need or want to change this address, it will be necessary to change de source code.



## Testing
If you want to run the tests, just execute the commands below:



### Analytics lib
In the project directory execute:
```sh 
$ npm install
$ npm test
```



### Analytics Admin
In the project directory execute:
```sh 
$ rails db:create RAILS_ENV=test
$ rails db:migrate RAILS_ENV=test
$ rspec
```


### Awesome Store
In the project directory execute:
```sh 
$ rails db:create RAILS_ENV=test
$ rails db:migrate RAILS_ENV=test
$ rspec
```

##### **Note:** If you get an error running rspec test, maybe it will be necessary to install [chromedriver](https://chromedriver.storage.googleapis.com/index.html)


## License

The MIT License (MIT)

Copyright (c) [2016] [Alisson Bruno]

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


