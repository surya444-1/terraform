resource "aws_instance" "my_web_server" {
   #ami = "${data.aws_ami.my_ami.id}"
    ami = "ami-0915e09cc7ceee3ab"
    availability_zone = "us-east-1a"
    instance_type = "t2.micro"
    key_name = "${var.keypair}"
    subnet_id = "${aws_subnet.subnet1-public.id}"
    vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
    associate_public_ip_address = true	
    tags = {
        Name = "${var.ec2_name}"
        Env = "test"
    }
}
