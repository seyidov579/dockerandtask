import os

from labrintask import settings


def generate_photo_thumnail_name(file):
    option = settings.options
    size = option.get("size")
    size_with = size[0]
    size_height = size[1]
    name, extension = os.path.splitext(file.name)
    if extension == '.jpeg':
        extension = '.jpg'
    return "." + str(size_with) + "x" + str(size_height) + "_q85_crop" + str(extension)
