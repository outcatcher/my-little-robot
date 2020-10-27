from robot.api.deco import keyword


@keyword('Print Me Here')
def print_me():
    print('ME')
