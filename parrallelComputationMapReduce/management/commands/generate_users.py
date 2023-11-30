from typing import Any
from django.contrib.auth.models import User
from django.core.management.base import BaseCommand, CommandParser
from django.utils.crypto import get_random_string


class Command(BaseCommand):
    help = "Generate a series of users"

    def add_arguments(self, parser: CommandParser) -> None:
        parser.add_argument(
            "-t",
            "--total",
            type=int,
            help="Indicates the number of users to be created",
        )

        parser.add_argument("-p", "--prefix", type=str, help="Define a username prefix")

    def handle(self, *args: Any, **kwargs: Any) -> None:
        total = kwargs["total"]
        prefix = kwargs["prefix"]

        for i in range(total):
            if prefix:
                username = "{prefix}_{number}".format(prefix=prefix, number=i)
            else:
                username = "user_{number}".format(number=i)
            User.objects.create_user(
                username=username,
                email=f"{username}@gmail.com",
                password=get_random_string(),
            )
