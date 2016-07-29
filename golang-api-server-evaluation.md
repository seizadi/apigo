# Golang API Server Evaluation

Set out to look at the best golang package/strategy for use as an API Server. The assumption of using golang was driven by prioritizing performance ahead of other metrics as shown in these performance metrics [2014](https://www.techempower.com/benchmarks/#section=data-r9&hw=i7&test=json) to [NOW](https://www.techempower.com/benchmarks/#section=data-r12&hw=peak&test=json), you will notice golang edge compared to Python and Ruby based interpretive environments. In the current report you will note the rise of other high performance API servers, among them the current leader [lwan](https://github.com/lpereira/lwan). The higher performance is the result of in-memory footprint of the server and the low overhead processing of requests e.g. zero-copy.

The golang community is [fairly negative on frameworks](https://www.reddit.com/r/golang/comments/42cgre/best_framework_to_build_restful_api_in_golang/), mainly around bloat/performance and lack of visibility to the programming environment.

In looking at the various packages, I narrowed my search to [Beego](http://beego.me/) and [Macaron](https://go-macaron.com/). I have Macaron in the past and feel comfortable with it, if you want to see an implementation of it you can look at [Grafana](http://grafana.org/). In this evaluation I focused on Beego since it is new to me, both packages have done a good job staying true to golang in using native or best packages. So you see for example following packages for HTTP and ORM: 
```go
import (
		_ "net/http"
    _ "github.com/go-sql-driver/mysql"
    _ "github.com/lib/pq"
    _ "github.com/mattn/go-sqlite3"
)
```
These are the same packages supported by Macaron, both packages support MVC design pattern. 

I think for developers coming from Rails, like me :) the Beego environment is more friendly it has retained the Rails [convention over confiugration pattern](https://en.wikipedia.org/wiki/Convention_over_configuration). The Beego bee command has generators for controllers, models, views and migrations that closely mimic [rails generate command](http://guides.rubyonrails.org/command_line.html#rails-generate).

Both Macraon and Beego have very similar features although in some cases they are named different Beego-NameSpaces vs Macaron-Groups or Beego-Controllers vs Macaron-Handlers. Neither framework supports AngularJS with a modern Grunt or Gulp asset pipeline, so this would have to be done seperately, again you can [reference Grafana for an example of this for Macaron.](http://grafana.org/)

I will update this document as I progress further with the Beego evaluation.