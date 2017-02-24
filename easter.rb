def easter(year)
  c = year/100
  n = year - 19 * (year/19)
  k = (c - 17)/25
  i = c - c/4 - (c-k)/3 + 19*n + 15
  i = i - 30 * (i/30)
  i = i - (i/28) * (1 - (i/28) * (29 / (i + 1)) * ((21 - n) /11))
  j = year + year/4 + i + 2 - c + c/4
  j = j - 7 * (j/7)
  l = i - j
  month = 3 + (l + 40)/44
  day = l + 28 - 31 * (month/4)
  [month, day]
end

date = easter 2014
puts date
t = Time.local 2014, *date
puts t

years = 2000..2017
years.each do |year|
  date = easter year
  t = Time.local year, *date
  puts t.strftime('%D')
end