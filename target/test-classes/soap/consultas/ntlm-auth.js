function fn(creds) {
  var temp = creds.username + ':' + creds.password;
  var res = karate.exec('curl POST '+ creds.url + '-v --ntlm --negotiate -u'+  creds.username + ':' + creds.password)
  return res;
}
