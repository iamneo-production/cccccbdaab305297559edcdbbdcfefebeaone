#sckey - 11duGtzuBCChR++W4NQePZRFAL1nv7hE12Hg7O1W
#ackey - AKIAX3IN6TILXGZCQ5GM

provider "aws"{
    region = "ap-southeast-1"
    access_key = "AKIAX3IN6TILXGZCQ5GM"
    secret_key = "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"
}

resource "aws_instance" "ec2_instance"{
    ami = "ami-072f48a9ed4f1bbda"
    instance_type = "t2.micro"
    }

output "public_ip" {
  value = aws_instance.ec2_instance.public_ip
}
