# Virtual Machines

## macOS Virtual Machine

### Get / Create macOS ISO

Download a software installer and create install media using a temporary local volume. Then convert the DMG to an ISO (CDR).

Commands (some extra/optional included):

```bash
# NOTE: got spaces? escape them: "Big\ Sur"
macosvm_name=Monterey
macosvm_version=12.5.1

# available
softwareupdate --list-full-installers

# download (it'll say "installing" don't freak)
softwareupdate --fetch-full-installer --full-installer-version ${macosvm_version}

# Create/mount 16GB, SPUD, HFS+ w/journal volume
hdiutil create -o /tmp/macOS -size 16384m -volname macOS -layout SPUD -fs HFS+J
hdiutil attach /tmp/macOS.dmg -noverify -mountpoint /Volumes/macOS

# Create install media using volume (root required for install media)
sudo /Applications/Install\ macOS\ ${macosvm_name}.app/Contents/Resources/createinstallmedia \
  --volume /Volumes/macOS --nointeraction

# Detach
hdiutil detach -force /Volumes/Install\ macOS\ ${macosvm_name}

# Convert DMS to ISO (via CDR)
macosvm_file=macOS-${macosvm_name}
hdiutil convert /tmp/macOS.dmg -format UDTO -o ~/Desktop/${macosvm_file}
mv ~/Desktop/${macosvm_file}.cdr ~/Desktop/${macosvm_file}.iso

# Grab a drink, check your desktop
```

### Run macOS Virtual Machine

Use VMWare or Parallels -- VMWare has a free personal license.

Directions work for virtualbox BUT it doesn't generally support newer macOS versions: <https://www.virtualbox.org/manual/ch01.html#hostossupport>

VM settings:

1. CPU: 4
2. Memory: 8GB (8192MB)
3. Storage: 40GB, SSD/NVME (optional)
4. Display: enable 3D, 128/256 VRAM

Run VM, give it the ISO, then in the VM:

1. Disk Utility > format the "(VM hard drive name)..." as "Macintosh HD" APFS
2. Install, select HD, agree, wait ~25 minutes for install
3. Power down, take a VM snapshot
4. Power on, install VMWare Tools
5. Power down, take a VM snapshot
6. DONE! If things get weird, rollback to a snapshot.
