if (s{http://dbpedia.org/resource/(.*)}{$1*}) {
  s{%(..)}{chr(hex($1))}eg;
  next};
