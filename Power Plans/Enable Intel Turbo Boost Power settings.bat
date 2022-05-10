powercfg -attributes sub_processor perfboostmode -attrib_hide
powercfg -q scheme_current sub_processor perfboostmode
powercfg -s scheme_current
powercfg -setdcvalueindex scheme_current sub_processor perfboostmode 2
powercfg -s scheme_current
PAUSE