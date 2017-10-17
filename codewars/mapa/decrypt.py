#!/usr/bin/python

from Crypto.Cipher import DES3
import base64

secret = base64.decodestring('s/8apGfP7DIJluF+BNm7zvlBth4reFTC5+lFJuIHjpU=')
key = secret[:24]
iv = secret[24:]

# Encoded Encrypted password
EEpwd = '71zRscBcapnIPY3UGHHcPw=='

# Decoded Encrypted password
DEpwd = base64.decodestring(EEpwd)

# Decoded Decrypted password
DDpwd = DES3.new(key, DES3.MODE_CBC, iv).decrypt(DEpwd)
print "Decoded (Decrypted ( PWD ) ) : ",DDpwd