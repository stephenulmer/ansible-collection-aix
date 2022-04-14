#
# Copyright (c) 2022 Stephen L. Ulmer
#

class TestModule(object):

    def tests(self):
        return {
            'mode_permits': self.check_mode,
        }

    def check_mode(self, value, mask):
        """Test if a file mode permits an operation.

        Jinja2 developers are hostile toward bitwise operators. This
        provides a way to test, for example, if a particular bit in
        file permissions is set.

        Args:
            value: Number or mode string in octal
            mask: The permissions against which to test value.

        Returns:
            bool: True if (value & mask) is True, False otherwise.
        """

        value = int(value, 8) if isinstance(value, str) else value
        mask = int(value, 8) if isinstance(mask, str) else mask

        return(value & mask)
