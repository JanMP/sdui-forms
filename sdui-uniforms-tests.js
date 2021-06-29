// Import Tinytest from the tinytest Meteor package.
import { Tinytest } from "meteor/tinytest";

// Import and rename a variable exported by sdui-uniforms.js.
import { name as packageName } from "meteor/sdui-uniforms";

// Write your tests here!
// Here is an example.
Tinytest.add('sdui-uniforms - example', function (test) {
  test.equal(packageName, "sdui-uniforms");
});
