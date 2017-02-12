cask 'eloston-chromium' do
  version '55.0.2883,95-1'
  sha256 'ce3059098bc77dcc298bf2f81c08bcb541495bdddc3d6a1cc0651fd39ab6f271'

  # github.com/ungoogled-software/ungoogled-chromium-binaries was verified as official when first introduced to the cask
  url "https://github.com/ungoogled-software/ungoogled-chromium-binaries/releases/download/#{version.before_comma}.#{version.after_comma}/ungoogled-chromium_#{version.before_comma}.#{version.after_comma}_macos.dmg"
  appcast 'https://github.com/ungoogled-software/ungoogled-chromium-binaries/releases.atom',
          checkpoint: 'dbb87319a87c7ccf876d7df29abf5dbbf95c97935855238aafe9daabd093fd9a'
  name 'Ungoogled Chromium'
  homepage 'https://github.com/Eloston/ungoogled-chromium'

  app 'Chromium.app'

  zap delete: [
                '~/Library/Preferences/org.chromium.Chromium.plist',
                '~/Library/Caches/Chromium',
                '~/Library/Application Support/Chromium',
                '~/Library/Saved Application State/org.chromium.Chromium.savedState',
              ]
end
