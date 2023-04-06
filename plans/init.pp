# This is the structure of a simple plan. To learn more about writing
# Puppet plans, see the documentation: http://pup.pt/bolt-puppet-plans

# The summary sets the description of the plan that will appear
# in 'bolt plan show' output. Bolt uses puppet-strings to parse the
# summary and parameters from the plan.
# @summary mac setup
# @param targets localhost
plan bolt::init (
  TargetSpec $targets = "localhost"
) {
  run_command('curl -L https://nixos.org/nix/install | sh', $targets)
  run_command('nix-env -iA nixpkgs.tmux', $targets)
  run_command('nix-env -iA nixpkgs.neovim', $targets)
  run_command('nix-env -iA nixpkgs.slack', $targets)
  run_command('nix-env -iA nixpkgs.google-chrome', $targets)
  $command_result = run_command('whoami', $targets)
  return $command_result
}
