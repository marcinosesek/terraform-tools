resource "aws_key_pair" "key-pair" {
    key_name = "${var.KEY_PAIR_NAME}"
    public_key = "${file("${var.PUBLIC_KEY}")}"

    tags = merge(
        var.KEY_PAIR_TAGS,
        {
            Name = "${var.KEY_PAIR_NAME}"
        },
    )
}