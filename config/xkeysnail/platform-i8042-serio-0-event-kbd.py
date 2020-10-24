import re
from xkeysnail.transform import *

define_modmap({
    Key.BACKSLASH: Key.BACKSPACE,
    Key.BACKSPACE: Key.BACKSLASH,
    Key.SYSRQ: Key.RIGHT_META,
    Key.CAPSLOCK: Key.ESC
})

define_multipurpose_modmap({
    Key.SPACE: [Key.SPACE, Key.RIGHT_CTRL],
    Key.LEFT_ALT: [Key.HENKAN, Key.LEFT_ALT]
})
