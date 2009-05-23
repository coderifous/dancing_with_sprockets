`dancing_with_sprockets`
=======================

The `dancing_with_sprockets` rails engine plugin makes it easy to use [Sprockets](http://github.com/sstephenson/sprockets) in your Rails application

`dancing_with_sprockets` includes a controller named `SprocketsController` that renders your application's Sprockets concatenation. When caching is enabled, e.g. in production mode, `SprocketsController` uses Rails page caching to save the concatenated output the first time it is requested. When caching is disabled, e.g. in development mode, `SprocketsController` will render a fresh concatenation any time a source file changes.

This plugin makes it _easy_ to use sprockets with rails.  Just `script/plugin install` and write your javascript. Done.

## _Your narrative has become tiresome._

## A note about the required Rails version

  This is a rails engine plugin so it requres Rails > 2.3, however it started as a regular plugin (not engine).  So if you want to use this plugin w/o upgrading to rails 2.3 for some reason, then you could just checkout the commit tagged `pre_rails23_plugin` of the `dancing_with_sprockets` plugin.

## Installation

1. `gem install --remote sprockets`

2. `script/plugin install git://github.com/coderifous/dancing_with_sprockets.git`

3.  _Now is the time on Sprockets vhen ve dance!_

    During installation the plugin will create the `app/javascripts/` directory in your application.  You should create/move your javascript files under this directory and then include them in your views/layouts using the `sprockets_include_tag "name_of_file"` helper.  The file will be sprocketized (all sprocket directives processed) and the resulting bundle will be served.

## License

Copyright &copy; 2009 Jim Garvin

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
