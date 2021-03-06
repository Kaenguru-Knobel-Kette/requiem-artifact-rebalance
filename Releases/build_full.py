"""Build full release.
Loose files are packed into a bsa and version numbers are added."""
import config
import logging
import release

logger = logging.getLogger(release.__name__)
logger.setLevel(logging.INFO)
formatter = logging.Formatter("%(asctime)s %(levelname)s %(message)s")
handler = logging.FileHandler("{}.log".format(release.__name__), "w")
handler.setFormatter(formatter)
logger.addHandler(handler)
try:
    release.build_release(dir_src=config.DIR_REPO_LE,
                          dir_ver=config.DIR_VER,
                          temp_alt=config.DIR_TEMP_ALT,
                          arch_exe=config.ARCH_EXE_LE)
except Exception as error:
    logger.exception(error)
