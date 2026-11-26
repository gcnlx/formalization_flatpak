structure Runtime where
  name: String
  libraries: List String

-- Implemented as available under https://github.com/flatpak/flatpak/blob/main/common/flatpak-context.c
inductive Socket where
  | x11
  | wayland
  | pulseaudio
  | session_bus
  | system_bus
  | fallback_x11
  | ssh_auth
  | pcsc
  | cups
  | gpg_agent
  | inherit_wayland_socket

structure Application where
  name: String
  runtime: Runtime
  sockets: List Socket

structure BundleLibrary where
  name: String
  application: Application
