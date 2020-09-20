import re
from xkeysnail.transform import *

define_modmap({
    Key.BACKSLASH: Key.BACKSPACE,
    Key.BACKSPACE: Key.BACKSLASH,
    Key.SYSRQ: Key.RIGHT_META,
    Key.RIGHT_SHIFT: Key.RIGHT_CTRL
})

define_multipurpose_modmap({
    Key.SPACE: [Key.SPACE, Key.RIGHT_SHIFT],
    Key.LEFT_ALT: [Key.HENKAN, Key.LEFT_CTRL]
})
