// Import Tinytest from the tinytest Meteor package.
import { Tinytest } from "meteor/tinytest";

// Import and rename a variable exported by sdui-forms.js.
import { name as packageName } from "meteor/sdui-forms";

// Write your tests here!
// Here is an example.
Tinytest.add('sdui-forms - example', function (test) {
  test.equal(packageName, "sdui-forms");
});
