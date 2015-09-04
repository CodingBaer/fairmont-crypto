assert = require "assert"
Amen = require "amen"
Crypto = require "../src"

Amen.describe "Crypto Functions", (context) ->

  context.test "md5", ->
    {md5} = Crypto
    assert (md5 "It was a dark and stormy night") ==
      "678b823bafa0461327d9a7de3902aaa8"

  context.test "base64", ->
    {base64} = Crypto
    assert (base64 "It was a dark and stormy night") ==
      "SXQgd2FzIGEgZGFyayBhbmQgc3Rvcm15IG5pZ2h0"

  context.test "base64url"
    {base64url} = Crypto
    assert (base64url "http://www.google.com") ==
      "aHR0cDovL3d3dy5nb29nbGUuY29t"
