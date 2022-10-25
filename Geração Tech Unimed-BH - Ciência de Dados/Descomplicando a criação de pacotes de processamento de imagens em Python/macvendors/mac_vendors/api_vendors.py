import requests


class MacVendors:
    """Class to get vendor in website macvendors.com"""

    def __init__(self, prefix):
        self.prefix = prefix
        self.vendor = None
        self.URL = "https://api.macvendors.com/"

        self.get_info()

    def get_info(self):
        """Method run requests"""
        vendor = requests.get(self.URL+self.prefix)

        if vendor.status_code == 200:
            self.vendor = vendor.text
        else:
            self.vendor = 'Error getting manufacturer'
