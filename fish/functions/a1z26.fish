function a1z26
    # This version ignores the "smart" guessing and just maps space-separated numbers
    echo $argv | python3 -c "
import sys
nums = sys.stdin.read().split()
print(''.join(chr(int(n) + 96) for n in nums))
"
end
