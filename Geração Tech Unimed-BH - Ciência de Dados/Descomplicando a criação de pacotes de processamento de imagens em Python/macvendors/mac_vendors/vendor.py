from time import sleep

import api_vendors


class Vendors:
    """Class obter vendor"""

    def __init__(self):
        self.response = {}

    def get_by_tuple(self, *args):
        """Get the information through a tuple"""

        for mac in args:

            if len(mac) >= 8:

                response = api_vendors.MacVendors(mac)
                tmp = {mac: response.vendor}
                self.response.update(tmp)

                sleep(0.5)

        if len(self.response) == 0:
            error = {'error': 'Need more than one item in the tuple, if you want to query only one prefix use the get_by_single method'}  # noqa:E501
            self.response.update(error)

    def get_by_file(self, file):
        """Get the information through a file"""

        with open(file, 'r', encoding='utf8') as macs:

            for mac in macs.readlines():
                vendor = api_vendors.MacVendors(mac.rstrip())
                tmp = {mac.rstrip(): vendor.vendor}
                self.response.update(tmp)

                sleep(0.5)

    def get_by_single(self, mac):
        """Get information from a single mac"""

        response = api_vendors.MacVendors(mac)
        tmp = {mac: response.vendor}
        self.response.update(tmp)
