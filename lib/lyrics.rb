require 'ostruct'

class Lyrics

  def self.all
    [
      {id: 1,  time: 17,  keyword: "hold me",                        line: "hold me down, choke me love"},
      {id: 2,  time: 21,  keyword: "from above",                     line: "there’s nothing more that I need from above"},
      {id: 3,  time: 25,  keyword: "jeans,",                         line: "i got cum on my jeans, but I swear I believe"},
      {id: 4,  time: 29,  keyword: "true love",                      line: "in true love"},
      {id: 5,  time: 33,  keyword: "heroines",                       line: "last night we were heroines"},
      {id: 6,  time: 37,  keyword: "speed",                          line: "on heroin and shitty speed"},
      {id: 7,  time: 41,  keyword: "dreamed",                        line: "it wasn’t as chic as I’d dreamed it would be"},
      {id: 8,  time: 45,  keyword: "escape",                         line: "so I fashioned my escape"},
      {id: 9,  time: 49,  keyword: "sweet champagne",                line: "as we buried you deep they served sweet champagne"},
      {id: 10, time: 53,  keyword: "rain",                           line: "i choked back a giggle and waited for rain"},
      {id: 11, time: 57,  keyword: "drunk",                          line: "i was drunk and ashamed, sweating sweltering"},
      {id: 12, time: 61,  keyword: "oblivion",                       line: "oblivion"},
      {id: 13, time: 65,  keyword: "pretend",                        line: "so shall we pretend as we rise from our squalour"},
      {id: 14, time: 69,  keyword: "commute,",                       line: "get up to commute, here’s to wealth, to honour"},
      {id: 15, time: 73,  keyword: "raise a glass",                  line: "raise a glass to the working class"},
      {id: 16, time: 77,  keyword: "sand",                           line: "building houses on salt and on sand and cheese"},
      {id: 17, time: 88,  keyword: "cheese",                         line: "say cheese"},
      {id: 18, time: 97,  keyword: "pass me the ball,",              line: "pass me the ball, throw me a bone"},
      {id: 19, time: 101, keyword: "dog",                            line: "i’ll run like a dog that is beaten and bowed"},
      {id: 20, time: 105, keyword: "try",                            line: "still every try that we try to convert"},
      {id: 21, time: 109, keyword: "home",                           line: "will be rigged up to find its way home"},
      {id: 22, time: 113, keyword: "success",                        line: "but I’ll carry on, success is a bottle"},
      {id: 23, time: 117, keyword: "goddamn tomorrow",               line: "i’m sucking them down, goddamn tomorrow"},
      {id: 24, time: 121, keyword: "haunt me now",                   line: "haunt me now all these spirits I’ve drowned"},
      {id: 25, time: 125, keyword: "sleep for the shame",            line: "as I circle round the drain, I can’t sleep for the shame"},
      {id: 26, time: 135, keyword: "shame",                          line: "i can’t sleep for the shame"},
      {id: 27, time: 143, keyword: "sleep",                          line: "i can’t sleep for the shame"},
      {id: 28, time: 151, keyword: "i can’t",                        line: "i can’t sleep for the shame"},
      {id: 29, time: 161, keyword: "hold me",                        line: "hold me down, choke me love"},
      {id: 30, time: 165, keyword: "from above",                     line: "there’s nothing more that I need from above"},
      {id: 31, time: 169, keyword: "jeans,",                         line: "i got cum on my jeans, but I swear I believe"},
      {id: 32, time: 173, keyword: "true love",                      line: "in true love"},
    ].map {|l| OpenStruct.new(l)}
  end

end
