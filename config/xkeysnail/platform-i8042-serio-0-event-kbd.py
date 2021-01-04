import re
from xkeysnail.transform import *

define_modmap({
    Key.BACKSLASH: Key.BACKSPACE,
    Key.BACKSPACE: Key.BACKSLASH,
    Key.SYSRQ: Key.RIGHT_META,
    Key.CAPSLOCK: Key.ESC,
    Key.LEFT_SHIFT: Key.LEFT,
    Key.RIGHT_SHIFT: Key.RIGHT,
})

define_multipurpose_modmap({
    Key.SPACE: [Key.SPACE, Key.LEFT_SHIFT],
    Key.RIGHT_ALT: [Key.HENKAN, Key.RIGHT_CTRL],
})
