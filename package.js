Package.describe({
  name: 'janmp:sdui-uniforms',
  version: '0.0.1',
  // Brief, one-line summary of the package.
  summary: '',
  // URL to the Git repository containing the source code for this package.
  git: '',
  // By default, Meteor will default to using README.md for documentation.
  // To avoid submitting documentation, set this field to null.
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.versionsFrom('2.2');
  api.use('ecmascript');
  api.use('typescript');
  api.mainModule('sdui-uniforms.js');
});

Package.onTest(function(api) {
  api.use('ecmascript');
  api.use('tinytest');
  api.use('sdui-uniforms');
  api.mainModule('sdui-uniforms-tests.js');
});
