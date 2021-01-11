app.name: Emacs
-
# key_wait increases the delay when pressing keys (milliseconds)
# this is useful if an app seems to jumble or drop keys
settings():
    key_wait = 2.0

#tag(): user.line_commands

# Edit action class
action(edit.copy):
        key(alt-w)

action(edit.cut):
        key(ctrl-w)

action(edit.paste):
        key(ctrl-y)

action(edit.delete_line):
        key(ctrl-shift-backspace)

action(edit.delete_word):
        key(alt-delete)

action(edit.line_end):
        key(ctrl-e)

action(edit.select_all):
        key(ctrl-x h)

action(edit.undo):
        key(ctrl-/)

action(edit.line_start):
        key(ctrl-a)

action(edit.file_start):
        key(alt-shift-<)

action(edit.file_end):
        key(alt-shift->)

action(app.window_open):
        key(ctrl-x 5 2)

action(app.window_close):
        key(ctrl-x 5 0)

action(app.window_hide):
        key(ctrl-z)

# Emacs-specific

# counterpart slap is defined in standard.talon
slurp: key(ctrl-a ctrl-o)
kill [line]: key(ctrl-k)
kill whole [line]: key(ctrl-shift-backspace)
line indentation end: key(alt-m)
go [line] <number>$:
    key(alt-g g)
    insert(number)
    key(enter)
recenter: key(ctrl-l)

paste (pop | ring): key(alt-y)
mark that: key(ctrl-space)
mark word: key(alt-@)
mark pop: key(ctrl-u ctrl-space)
mark (def | deaf | definition): key(ctrl-alt-h)
mark (sexp | sex): key(ctrl-alt-space)

help apropos: key(ctrl-h a)
help bindings: key(ctrl-h b)
help function: key(ctrl-h f)
help key: key(ctrl-h k)
help mode: key(ctrl-h m)

file save: key(ctrl-x ctrl-s)
file (find | open) : key(ctrl-x ctrl-f)

tree:
    key(alt-x)
    insert("treemacs")
    key(enter)

# ideas from: https://github.com/jcaw/talon_config/blob/master/talon_files/emacs/basic.talon
(quit | cancel | can): key(ctrl-g)
(reset | rescue): key(esc esc esc)
meta: key(alt-x)
meta <user.text>:
     key(alt-x)
     insert(text)
     key(enter)

# Double `ctrl-c` means "submit", but the specific command varies based on
# context. Easier to just bind the keypress than try and bind each
# implementation.
submit:  key(ctrl-c ctrl-c)
discard: key(ctrl-c ctrl-k)

(buffer | buff) switch: key(ctrl-x b)
(buffer | buff) kill: key(ctrl-x k enter)
(buffer | buff) next: key(ctrl-x right)
(buffer | buff) (previous | pre | last): key(ctrl-x left)
(buffer | buff) list: key(ctrl-x ctrl-b)

search [forward] [<user.text>]:
    key(ctrl-s)
    insert(text or '')

search (rev | reverse) [<user.text>]:
    key(ctrl-r)
    insert(text or '')

search again: key(ctrl-s ctrl-s)

search symbol at point: key(alt-s .)

search and replace: key(ctrl-alt-%)

occur [<user.text>]:
    key(alt-s o)
    insert(text or '')

complete: key(alt-/)

(his | history) (pre | previous | last): key(alt-p)
(his | history) next: key(alt-n)

match next: key(alt-g n)
match (pre | previous | last): key(alt-g p)

other [(window | win)]: key(alt-o)
(close | kill) (window | win): key(ctrl-x 0)
(close | kill) other (windows | wins): key(ctrl-x 1)
balance [(windows | wins)]: key(ctrl-x +)
split [horizontal | horizontally]: key(ctrl-x 2)
split [vertical | vertically]: key(ctrl-x 3)
[window | win | frame] new: key(ctrl-x 5 2)

# projectile
# https://docs.projectile.mx/projectile/usage.html
project (file | files | find file): key(cmd-p f)
project (directory | directories): key(cmd-p d)
project (search | find | grep): key(cmd-p s g)
project (buffers | buff): key(cmd-p b)
project relative: key(cmd-p a)
project (kill | close): key(cmd-p k)
project (recent | recents | recent files): key(cmd-p e)

projects list [(all | known)]: key(cmd-p p)
projects list open: key(cmd-p q)

# magit
git status: key(ctrl-x g)

# commenting
comment: key(alt-;)
comment continue: key(alt-j)
comment line: key(ctrl-x ctrl-;)

# transposition
transpose lines: key(ctrl-x ctrl-t)
