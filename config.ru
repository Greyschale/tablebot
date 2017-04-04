require 'rubygems'
require 'bundler'
require 'json'

Bundler.require

require './tablebot'

configure do
  ALLOWED_ACTIONS = {
    flip: '(╯°□°）╯︵ ┻━┻ ',
    rageflip: '(ノಠ益ಠ)ノ彡┻━┻',
    doubleflip: '┻━┻ ︵ヽ(`Д´)ﾉ︵﻿ ┻━┻',
    replace: '(ヘ･_･)ヘ┳━┳'
  }
end

run Sinatra::Application
