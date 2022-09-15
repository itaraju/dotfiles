import ranger.api
import ranger.core.linemode

# adding / to directory names
# from: https://github.com/ranger/ranger/issues/1012
@ranger.api.register_linemode
class DirSlashLinemode(ranger.core.linemode.LinemodeBase):
    name = "dirslash"

    def filetitle(self, fobj, metadata):
        if fobj.is_directory:
            return fobj.relative_path + "/"
        else:
            return fobj.relative_path
