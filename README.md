# aix7_stig

Applies Security Technical Implementation Guide (STIG) Controls to AIX.


## Requirements


## Role Variables


## Dependencies

This role erequires the ibm.power_aix collection.


## Example Playbook

    - hosts: aix
      roles:
         - { role: stephenulmer.aix7_stig }

## Updating the Role

The role was originally constructed by transforming the US Government
supplied AIX 7 STIG XCCDF file into task templates and an include file with
XSLT-2.0. The XSLT stylesheets are in etc/*.xslt.

The stuibs can be re-generated as follows:

    saxon -xsl:make_tasks.xslt U_IBM_AIX_7-x_STIG_V2R3_Manual-xccdf.xml
    saxon -xsl:make_includes.xslt U_IBM_AIX_7-x_STIG_V2R3_Manual-xccdf.xml

Note that the XCCDF does not contain programmatically useful fix text,
and regenerating the stubs will overwrite the fixes in any existing
files. This *is* useful for checking for *new* controls, however, and
with enough git-FU it should be possible to reject the "delete all of
my work" changes and accept updates in the form of additional stubs.


## License

MIT, see LICENSE file.


## Authors

Created in 2022 by Stephen Ulmer.
