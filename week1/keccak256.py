import sha3
from base64 import encode
from attr import has

raw_message = input("Input secret message to deliver: ")
print("Original Message: \n", raw_message)
encrypted = raw_message.encode()
obj_encrypted = sha3.keccak_256(encrypted)
print("Secured secret message : \n", obj_encrypted.hexdigest())
