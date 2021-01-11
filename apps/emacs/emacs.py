from talon import Context, actions, ui, Module, app, clip

ctx = Context()
mod = Module()

mod.apps.emacs = """
os: mac
and app.bundle: org.gnu.Emacs
"""

ctx.matches = r"""
app: emacs
"""


@ctx.action_class("win")
class win_actions:
    def filename():
        title = actions.win.title()
        # this doesn't seem to be necessary on VSCode for Mac
        # if title == "":
        #    title = ui.active_window().doc
        result = title.split(" — ")[0]
        return result if "." in result else ""

    def file_ext():
        return actions.win.filename().split(".")[-1]
