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
    doublerageflip: '┻━┻ ︵ヽ(ಠ益ಠ)ﾉ︵﻿ ┻━┻',
    replace: '┳━┳ノ(･_･ノ)',
    reverseflip: 'ノ┳━┳ノ ︵ ( ৲o°o)৲'
  }
end

run Sinatra::Application
