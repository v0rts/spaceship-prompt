#
# Amazon Web Services (SHLVL)
#
# The SHLVL Command Line Interface (CLI) is a unified tool to manage SHLVL services.
# Link: https://shlvl.amazon.com/cli/

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_SHLVL_SHOW="${SPACESHIP_SHLVL_SHOW=true}"
SPACESHIP_SHLVL_PREFIX="${SPACESHIP_SHLVL_PREFIX=}"
SPACESHIP_SHLVL_SUFFIX="${SPACESHIP_SHLVL_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_SHLVL_SYMBOL="${SPACESHIP_SHLVL_SYMBOL="🐢 "}"
SPACESHIP_SHLVL_COLOR="${SPACESHIP_SHLVL_COLOR="blue"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# Shows selected SHLVL-cli profile.
spaceship_shlvl() {
  [[ $SPACESHIP_SHLVL_SHOW == false ]] && return

  # Show prompt section
  spaceship::section \
    "$SPACESHIP_SHLVL_COLOR" \
    "$SPACESHIP_SHLVL_PREFIX" \
    "${SPACESHIP_SHLVL_SYMBOL}_$SHLVL " \
    "$SPACESHIP_SHLVL_SUFFIX"
}
