-- resource.lua

-- Specify the resource metadata
resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'
author 'its_cehic'

-- Specify the UI files
ui_page 'ui.html'

-- Specify the client script files
files {
    'ui.html',
    'style.css',
    'script.js',
    'client.lua'
}

client_script {
    'client.lua'
}
