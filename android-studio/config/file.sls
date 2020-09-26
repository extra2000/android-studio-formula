# -*- coding: utf-8 -*-
# vim: ft=sls

/opt/android-studio-ide:
  file.directory:
    - user: {{ pillar['android-studio']['user']['name'] }}
    - makedirs: false

/opt/android-studio-ide/:
  archive.extracted:
    - source: https://redirector.gvt1.com/edgedl/android/studio/ide-zips/4.0.1.0/android-studio-ide-193.6626763-linux.tar.gz
    - source_hash: f2f82744e735eae43fa018a77254c398a3bab5371f09973a37483014b73b7597
    - user: {{ pillar['android-studio']['user']['name'] }}
