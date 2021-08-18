Package.describe({
  name: 'janmp:sdui-forms-original',
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
  api.versionsFrom('2.3');
  api.use('ecmascript');
  api.use('coffeescript');
  api.use('typescript');
  api.use('accounts-base');
  api.use('accounts-password');
  api.mainModule('sdui-forms.js');
});

Package.onTest(function(api) {
  api.use('ecmascript');
  api.use('tinytest');
  api.use('coffeescript');
  api.use('typescript');
  api.use('sdui-forms');
  api.mainModule('sdui-forms-tests.js');
});
