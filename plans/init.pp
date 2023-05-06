# This is the structure of a simple plan. To learn more about writing
# Puppet plans, see the documentation: http://pup.pt/bolt-puppet-plans

# The summary sets the description of the plan that will appear
# in 'bolt plan show' output. Bolt uses puppet-strings to parse the
# summary and parameters from the plan.
# @summary mac automation plan
# @param targets The targets to run on.
plan bolt (
  TargetSpec $targets = "localhost"
) {
  run_task('bolt::term', $targets)
  run_task('bolt::apps', $targets)
}
