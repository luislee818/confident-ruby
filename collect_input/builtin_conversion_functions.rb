# use Integer()
def pretty_int(value)
  decimal = Integer(value).to_s
  leader = decimal.slice!(0, decimal.length % 3)
  decimal.gsub!(/\d{3}(?!$)/, '\0,') # negative look behind, reference with \0
  decimal = nil if decimal.empty?
  leader = nil if leader.empty?
  [leader, decimal].compact.join(",")
end

# use Pathname and URI, they are idempotent
require 'pathname'
require 'uri'

path = Pathname.new("/etc/hosts")
Pathname(path)
Pathname("/etc/hosts")

uri_str = "http://example.org"
uri = URI.parse(uri_str)
URI(uri_str)
URI(uri)

# use Hash[]
inventory = ['apples', 17, 'oranges', 11, 'pears', 22]
Hash[*inventory]
