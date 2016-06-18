require 'erb'
require 'base64'

COLORS = {
  ANSIBlackColor:         '292C36',
  ANSIRedColor:           'D2242E',
  ANSIGreenColor:         '84BD5C',
  ANSIYellowColor:        'C9794B',
  ANSIBlueColor:          '716EB1',
  ANSIMagentaColor:       'A52281',
  ANSICyanColor:          '379D92',
  ANSIWhiteColor:         'A4A9BA',

  ANSIBrightBlackColor:   '3F4453',
  ANSIBrightRedColor:     'F10513',
  ANSIBrightGreenColor:   '7FDA3F',
  ANSIBrightYellowColor:  'E6712E',
  ANSIBrightBlueColor:    '5852CD',
  ANSIBrightMagentaColor: 'BE098C',
  ANSIBrightCyanColor:    '1DB8A7',
  ANSIBrightWhiteColor:   'FFFFFF'

}

BPLIST = "bplist01\xD4\x01\x02\x03\x04\x05\x06\x15\x16X$versionX$objectsY$archiverT$top\x12\x00\x01\x86\xA0\xA3\a\b\x0FU$null\xD3\t\n\v\f\r\x0EUNSRGB\\NSColorSpaceV$classO\x10'%.10f %.10f %.10f\x00\x10\x01\x80\x02\xD2\x10\x11\x12\x13Z$classnameX$classesWNSColor\xA2\x12\x14XNSObject_\x10\x0FNSKeyedArchiver\xD1\x17\x18Troot\x80\x01\b\x11\x1A#-27;AHN[b\x8C\x8E\x90\x95\xA0\xA9\xB1\xB4\xBD\xCF\xD2\xD7\x00\x00\x00\x00\x00\x00\x01\x01\x00\x00\x00\x00\x00\x00\x00\x19\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xD9"

TEMPLATE = <<-EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <% data.each do |key, data| %><key><%= key %></key>
  <data>
    <%= data %>
  </data><% end %>
  <key>ProfileCurrentVersion</key>
  <real>2.04</real>
  <key>type</key>
  <string>Window Settings</string>
</dict>
</plist>
EOF

task :generate do
  {
    dark: COLORS.merge({
      BackgroundColor: COLORS[:ANSIBlackColor],
      TextBoldColor:   COLORS[:ANSIBrightWhiteColor],
      TextColor:       COLORS[:ANSIBrightWhiteColor] 
    }),
    light: COLORS.merge({
      BackgroundColor: COLORS[:ANSIBrightWhiteColor],
      TextBoldColor:   COLORS[:ANSIBlackColor],
      TextColor:       COLORS[:ANSIBlackColor] 
    })
  }.each do |key, profile|
    rgb = Hash[profile.map do |key, color|
      [key, color.scan(/../).map { |value| value.to_i(16).to_f / 255 }]
    end]

    data = Hash[rgb.map do |key, color|
      [key, Base64.encode64(sprintf(BPLIST, *color)).gsub("\n", "\n\t").strip]
    end]

    File.write("wwdc16-#{key}.terminal", ERB.new(TEMPLATE).result(binding))
  end
end
